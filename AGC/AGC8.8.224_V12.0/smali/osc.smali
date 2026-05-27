.class final Losc;
.super Ljava/lang/Object;

# interfaces
.implements Loqh;


# instance fields
.field final synthetic a:Losd;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Losd;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Losc;->a:Losd;

    iput-object p2, p0, Losc;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cN()V
    .locals 2

    iget-object v0, p0, Losc;->a:Losd;

    iget-object v0, v0, Losd;->c:Landroid/os/Handler;

    iget-object v1, p0, Losc;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
