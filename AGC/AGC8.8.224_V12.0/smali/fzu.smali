.class final Lfzu;
.super Ljava/lang/Object;

# interfaces
.implements Lfzy;


# instance fields
.field public a:Z

.field final synthetic b:Lfzv;


# direct methods
.method public constructor <init>(Lfzv;)V
    .locals 0

    iput-object p1, p0, Lfzu;->b:Lfzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lfzu;->a:Z

    return-void
.end method


# virtual methods
.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lfzu;->b:Lfzv;

    iget-object p1, p1, Lfzv;->b:Ljuh;

    new-instance v0, Lfzr;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lfzr;-><init>(Lfzu;I)V

    invoke-virtual {p1, v0}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(I)V
    .locals 0

    return-void
.end method

.method public final f(Z)V
    .locals 0

    return-void
.end method

.method public final g(J)V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lfzu;->b:Lfzv;

    iget-object v0, v0, Lfzv;->b:Ljuh;

    new-instance v1, Lfzr;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lfzr;-><init>(Lfzu;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
