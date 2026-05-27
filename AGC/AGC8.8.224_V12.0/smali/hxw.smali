.class final Lhxw;
.super Ljava/lang/Object;

# interfaces
.implements Lhrx;


# instance fields
.field final synthetic a:Liff;

.field final synthetic b:Lhxv;


# direct methods
.method public constructor <init>(Lhxv;Liff;)V
    .locals 0

    iput-object p1, p0, Lhxw;->b:Lhxv;

    iput-object p2, p0, Lhxw;->a:Liff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final x(I)V
    .locals 4

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lhxw;->b:Lhxv;

    iget-boolean p1, p1, Lhxv;->b:Z

    if-eqz p1, :cond_0

    invoke-static {}, Ljvd;->n()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lhxw;->a:Liff;

    new-instance v1, Lhxc;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Lhxc;-><init>(Liff;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final y(I)V
    .locals 0

    return-void
.end method
