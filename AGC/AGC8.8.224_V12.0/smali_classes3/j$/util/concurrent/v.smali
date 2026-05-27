.class final Lj$/util/concurrent/v;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final initialValue()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lj$/util/concurrent/ThreadLocalRandom;

    invoke-direct {v0}, Lj$/util/concurrent/ThreadLocalRandom;-><init>()V

    return-object v0
.end method
