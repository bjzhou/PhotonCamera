.class public abstract Loqs;
.super Lopq;

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokq;

    sget-object v1, Lopq;->b:Lokq;

    sget-object v2, Lawu;->i:Lawu;

    invoke-direct {v0, v1, v2}, Lokq;-><init>(Loky;Lomk;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lopq;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract c()Ljava/util/concurrent/Executor;
.end method
