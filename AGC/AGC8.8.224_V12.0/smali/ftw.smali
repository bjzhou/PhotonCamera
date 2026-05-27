.class public final Lftw;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lftw;->a:Loiw;

    iput-object p2, p0, Lftw;->b:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;)Lftw;
    .locals 1

    new-instance v0, Lftw;

    invoke-direct {v0, p0, p1}, Lftw;-><init>(Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljuw;
    .locals 5

    iget-object v0, p0, Lftw;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lftw;->b:Loiw;

    check-cast v1, Lcmj;

    invoke-virtual {v1}, Lcmj;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Ljuw;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, v0, v1, v2, v4}, Ljuw;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lftw;->b()Ljuw;

    move-result-object v0

    return-object v0
.end method
