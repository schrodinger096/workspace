import java.util.LinkedHashMap;
import java.util.Map;

public class LRUCache<K, V> extends LinkedHashMap<K, V> {

    private final int capacity;

    public LRUCache(int capacity) {
        super(capacity, 0.75f, true);
        this.capacity = capacity;
    }

    @Override
    protected boolean removeEldestEntry(Map.Entry<K, V> eldest) {
        return size() > capacity;
    }

    public static void main(String[] args) {

        LRUCache<Integer, String> cache = new LRUCache<>(3);

        cache.put(1, "Java");
        cache.put(2, "Python");
        cache.put(3, "C++");

        System.out.println("Initial Cache:");
        System.out.println(cache);

        cache.get(1);

        cache.put(4, "JavaScript");

        System.out.println("\nAfter accessing key 1 and adding key 4:");
        System.out.println(cache);

        cache.put(5, "Go");

        System.out.println("\nAfter adding key 5:");
        System.out.println(cache);
    }
}
