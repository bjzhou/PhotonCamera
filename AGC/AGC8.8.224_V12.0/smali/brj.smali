.class public final Lbrj;
.super Ljava/lang/ref/WeakReference;


# instance fields
.field final a:Lbqb;

.field final b:Z

.field c:Lbsn;


# direct methods
.method public constructor <init>(Lbqb;Lbsh;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lbrj;->a:Lbqb;

    const/4 p1, 0x0

    iput-object p1, p0, Lbrj;->c:Lbsn;

    iget-boolean p1, p2, Lbsh;->a:Z

    iput-boolean p1, p0, Lbrj;->b:Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbrj;->c:Lbsn;

    invoke-virtual {p0}, Lbrj;->clear()V

    return-void
.end method
