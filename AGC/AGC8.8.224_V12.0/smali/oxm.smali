.class public final Loxm;
.super Loqs;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final c:Loxm;

.field private static final d:Lopq;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Loxm;

    invoke-direct {v0}, Loxm;-><init>()V

    sput-object v0, Loxm;->c:Loxm;

    sget-object v0, Loxt;->c:Loxt;

    sget v1, Loxc;->a:I

    const/16 v2, 0x40

    invoke-static {v2, v1}, Lonm;->f(II)I

    move-result v1

    const-string v2, "kotlinx.coroutines.io.parallelism"

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-static {v2, v1, v3, v3, v4}, Lljz;->E(Ljava/lang/String;IIII)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Lowm;

    invoke-direct {v2, v0, v1}, Lowm;-><init>(Lopq;I)V

    sput-object v2, Loxm;->d:Lopq;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected positive parallelism level, but got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Loqs;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/concurrent/Executor;
    .locals 0

    return-object p0
.end method

.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Lola;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Loxm;->d:Lopq;

    invoke-virtual {v0, p1, p2}, Lopq;->d(Lola;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lolb;->a:Lolb;

    invoke-virtual {p0, v0, p1}, Loxm;->d(Lola;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
