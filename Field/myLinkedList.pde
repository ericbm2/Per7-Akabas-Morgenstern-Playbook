class myLinkedList<E>{

    Node<E> head;
    int length;
    
    myLinkedList(){
  head = new Node(null);
    }
    
    Node<E> getNode(int position){
  if (position == -1){
      return head;
  }
  if (position < -1 || position >= length){
      throw new IndexOutOfBoundsException();
  }
  Node<E> current = head.getNext();
  for (int i = 0 ; i < position ; i++){
      current = current.getNext();
  }
  return current;
    }
    
     void add(E s){
  Node<E> tmp = new Node(s);
  Node<E> current = getNode(length-1);
  current.setNext(tmp);
  length++;
    }
    E get(int position){
  return getNode(position).getData();
    }

    void remove(int position){
  Node<E> current = getNode(position-1);
  current.setNext(current.getNext().getNext());
  length--;
    }
   
   int size(){
       return length;
   }
   
    void set(int position, E newString){
  getNode(position).setData(newString);
    }

    int find(String s){
  Node<E> current = head;
  int whereWeAt = 0;
  while (current.getNext() != null){
      if (current.getNext().getData().equals(s)){
    return whereWeAt;
      }
      whereWeAt++;
      current = current.getNext();
  }
  return -1;
    }

    String toString(){
  String s="[";
  Node<E> current = head.getNext();
  s+= current.getData();
  while (current.getNext() != null){
      s = s + " ," + current.getNext().getData();
      current = current.getNext();
  }
  s += "]";
  return s;
    }

}
