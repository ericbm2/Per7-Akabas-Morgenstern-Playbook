class Node<E>{

    E data;
    Node<E> next;
    
    Node(E data){
  this.data=data;
  next=null;
    }

    void setNext(Node<E> next){
  this.next=next;
    }

    void setData(E data){
  this.data = data;
    }
    
    Node<E> getNext(){
  return next;
    }

    E getData(){
  return data;
    }

    String toString(){
  return "Data: "+data;
    }
}
