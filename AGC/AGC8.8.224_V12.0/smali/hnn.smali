.class final Lhnn;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lhno;


# direct methods
.method public constructor <init>(Lhno;)V
    .locals 0

    iput-object p1, p0, Lhnn;->a:Lhno;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lhnn;->a:Lhno;

    iget-object v1, v0, Lhno;->o:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, v0, Lhno;->H:Lhpu;

    iget v0, v0, Lhpu;->h:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
