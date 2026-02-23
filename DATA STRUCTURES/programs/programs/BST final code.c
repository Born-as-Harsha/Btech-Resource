#include <stdio.h>
#include <stdlib.h>

// Define the structure of a node in the binary search tree
struct Node {
    int data;
    struct Node* left;
    struct Node* right;
};

// Function to create a new node
struct Node* createNode(int value) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = value;
    newNode->left = NULL;
    newNode->right = NULL;
    return newNode;
}

// Function to insert a new node in the binary search tree
struct Node* insert(struct Node* root, int value) {
    if (root == NULL) {
        return createNode(value);
    }

    if (value < root->data) {
        root->left = insert(root->left, value);
    } else if (value > root->data) {
        root->right = insert(root->right, value);
    }

    return root;
}

// Function to search for a value in the binary search tree
struct Node* search(struct Node* root, int value) {
    if (root == NULL || root->data == value) {
        return root;
    }

    if (value < root->data) {
        return search(root->left, value);
    } else {
        return search(root->right, value);
    }
}

// Function to find the minimum element in the binary search tree
struct Node* findMin(struct Node* root) {
    if (root == NULL || root->left == NULL) {
        return root;
    }
    return findMin(root->left);
}

// Function to find the maximum element in the binary search tree
struct Node* findMax(struct Node* root) {
    if (root == NULL || root->right == NULL) {
        return root;
    }
    return findMax(root->right);
}

// Function to delete a node from the binary search tree
struct Node* deleteNode(struct Node* root, int value) {
    if (root == NULL) {
        return root;
    }

    if (value < root->data) {
        root->left = deleteNode(root->left, value);
    } else if (value > root->data) {
        root->right = deleteNode(root->right, value);
    } else {
        if (root->left == NULL) {
            struct Node* temp = root->right;
            free(root);
            return temp;
        } else if (root->right == NULL) {
            struct Node* temp = root->left;
            free(root);
            return temp;
        }

        struct Node* temp = findMin(root->right);
        root->data = temp->data;
        root->right = deleteNode(root->right, temp->data);
    }

    return root;
}

// Function to perform inorder traversal
void inorderTraversal(struct Node* root) {
    if (root != NULL) {
        inorderTraversal(root->left);
        printf("%d ", root->data);
        inorderTraversal(root->right);
    }
}

// Function to perform preorder traversal
void preorderTraversal(struct Node* root) {
    if (root != NULL) {
        printf("%d ", root->data);
        preorderTraversal(root->left);
        preorderTraversal(root->right);
    }
}

// Function to perform postorder traversal
void postorderTraversal(struct Node* root) {
    if (root != NULL) {
        postorderTraversal(root->left);
        postorderTraversal(root->right);
        printf("%d ", root->data);
    }
}

// Main function to test the binary search tree operations
int main() {
    struct Node* root = NULL;

    // Insert nodes into the binary search tree
    root = insert(root, 50);
    insert(root, 30);
    insert(root, 20);
    insert(root, 40);
    insert(root, 70);
    insert(root, 60);
    insert(root, 80);

    printf("Inorder traversal of the binary search tree: ");
    inorderTraversal(root);
    printf("\n");

    printf("Preorder traversal of the binary search tree: ");
    preorderTraversal(root);
    printf("\n");

    printf("Postorder traversal of the binary search tree: ");
    postorderTraversal(root);
    printf("\n");

    // Perform search operation
    int searchValue = 40;
    struct Node* result = search(root, searchValue);
    if (result != NULL) {
        printf("%d found in the binary search tree.\n", searchValue);
    } else {
        printf("%d not found in the binary search tree.\n", searchValue);
    }

    // Find minimum and maximum values
    struct Node* minNode = findMin(root);
    struct Node* maxNode = findMax(root);
    printf("Minimum element in the binary search tree: %d\n", minNode->data);
    printf("Maximum element in the binary search tree: %d\n", maxNode->data);

    // Delete a node from the binary search tree
    int deleteValue = 30;
    root = deleteNode(root, deleteValue);
    printf("\nAfter deleting %d:\n", deleteValue);
    printf("Inorder traversal: ");
    inorderTraversal(root);
    printf("\n");
    printf("Preorder traversal: ");
    preorderTraversal(root);
    printf("\n");
    printf("Postorder traversal: ");
    postorderTraversal(root);
    printf("\n");

    return 0;
}
