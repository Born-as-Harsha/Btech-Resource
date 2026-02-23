#include <stdio.h>
#include <string.h>

#define MAX_TRAINS 5
#define MAX_BOOKINGS 10

struct Train {
    int train_id;
    char train_name[50];
    char route[100];
    int available_seats;
};

struct Booking {
    int train_id;
    char passenger_name[50];
};

struct Train trains[MAX_TRAINS];
struct Booking bookings[MAX_BOOKINGS];

void add_train(int train_id, char *train_name, char *route, int available_seats, int *train_count) {
    if (*train_count < MAX_TRAINS) {
        trains[*train_count].train_id = train_id;
        strcpy(trains[*train_count].train_name, train_name);
        strcpy(trains[*train_count].route, route);
        trains[*train_count].available_seats = available_seats;
        (*train_count)++;
        printf("Train '%s' added successfully.\n", train_name);
    } else {
        printf("Unable to add more trains.\n");
    }
}

void view_trains(int train_count) {
    if (train_count == 0) {
        printf("No trains available.\n");
        return;
    }
    printf("Available Trains:\n");
    for (int i = 0; i < train_count; i++) {
        printf("Train ID: %d | Name: %s | Route: %s | Available Seats: %d\n",
               trains[i].train_id, trains[i].train_name, trains[i].route, trains[i].available_seats);
    }
}

void book_ticket(int train_id, char *passenger_name, int *booking_count) {
    int train_index = -1;
    for (int i = 0; i < MAX_TRAINS; i++) {
        if (trains[i].train_id == train_id) {
            train_index = i;
            break;
        }
    }
    if (train_index == -1) {
        printf("Train ID not found.\n");
        return;
    }
    if (trains[train_index].available_seats > 0) {
        trains[train_index].available_seats--;
        bookings[*booking_count].train_id = train_id;
        strcpy(bookings[*booking_count].passenger_name, passenger_name);
        (*booking_count)++;
        printf("Ticket booked successfully for %s on Train '%s'.\n", passenger_name, trains[train_index].train_name);
    } else {
        printf("Sorry, no seats available on this train.\n");
    }
}

void cancel_booking(char *passenger_name, int *booking_count) {
    int booking_index = -1;
    for (int i = 0; i < *booking_count; i++) {
        if (strcmp(bookings[i].passenger_name, passenger_name) == 0) {
            booking_index = i;
            break;
        }
    }
    if (booking_index == -1) {
        printf("No booking found for %s.\n", passenger_name);
        return;
    }
    int train_index = -1;
    for (int i = 0; i < MAX_TRAINS; i++) {
        if (trains[i].train_id == bookings[booking_index].train_id) {
            train_index = i;
            break;
        }
    }
    if (train_index != -1) {
        trains[train_index].available_seats++;
        for (int i = booking_index; i < *booking_count - 1; i++) {
            bookings[i] = bookings[i + 1];
        }
        (*booking_count)--;
        printf("Booking canceled for %s.\n", passenger_name);
    }
}

void view_bookings(int booking_count) {
    if (booking_count == 0) {
        printf("No bookings made yet.\n");
        return;
    }
    printf("Current Bookings:\n");
    for (int i = 0; i < booking_count; i++) {
        int train_index = -1;
        for (int j = 0; j < MAX_TRAINS; j++) {
            if (trains[j].train_id == bookings[i].train_id) {
                train_index = j;
                break;
            }
        }
        printf("Passenger: %s | Train: %s\n", bookings[i].passenger_name, trains[train_index].train_name);
    }
}

int main() {
    int train_count = 0;
    int booking_count = 0;

    add_train(101, "Express 101", "New York - Boston", 50, &train_count);
    add_train(102, "SuperFast 102", "Chicago - Miami", 30, &train_count);

    view_trains(train_count);

    book_ticket(101, "John Doe", &booking_count);
    book_ticket(102, "Alice Smith", &booking_count);

    view_bookings(booking_count);

    cancel_booking("Alice Smith", &booking_count);

    view_bookings(booking_count);

    return 0;
}

