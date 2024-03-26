#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

struct Node {
    int val;
    struct Node* next;
};

#define struct Node Node;

Node *swap(Node *ptr1, Node *ptr2) {
    Node *tmp = ptr2->next; // 
    ptr2->next = ptr1;
    ptr1->next = tmp;
    return ptr2;
}

void bubbleSort(Node **head, int count) {
    Node **h;
    int i, j;
    bool swapped;

    for(i = 0; i < count; i++) {
        h = head;
        swapped = false;
        for(j = 0; j < count - i - 1; j++) {
            Node *p1 = *h; // current node
            Node *p2 = p1->next; // next node
            if(p2->val < p1->val) { // If current node less than next node
                *h = swap(p1, p2);
                swapped = true;
            }
            h = &(*h)->next;
        }
        if(swapped == false) {
            break;
        }
    }
}

void printList(Node *n) {
    while(n != nullptr) {
        cout << n->val << " ";
        n = n->next;
    }
    cout << endl;
}

Node *makeList(int N) {
    Node *head, *tmp, *after;
    srand(time(0));
    for(int i = 0; i < N; i++) {
        tmp = (Node*)malloc(sizeof(Node)); // temp node before being added to main list
        tmp->val = rand() % 100 + 1;
        tmp->next = NULL;
        if(i == 0) {
            head = tmp; // If this is the first loop, tmp is head of list
        }
        else {
            after->next = tmp;  // If this is NOT the first loop, tmp is next node
        }
        after = tmp;
    }

    return head;
}

int main() {
    Node *head;
    const int N = 10;

    head = makeList(N);
    cout << "Unsorted List" << endl;
    printList(head);
    bubbleSort(&head, N);
    cout << "Sorted List" << endl;
    printList(head);

    return 0;
}