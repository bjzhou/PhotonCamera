.class public final Lfnd;
.super Ljava/lang/Object;

# interfaces
.implements Lenz;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lfng;I)V
    .locals 0

    iput p2, p0, Lfnd;->b:I

    iput-object p1, p0, Lfnd;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfvx;I[B)V
    .locals 0

    iput p2, p0, Lfnd;->b:I

    iput-object p1, p0, Lfnd;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Z)V
    .locals 0

    iget p1, p0, Lfnd;->b:I

    return-void
.end method

.method public final synthetic b(Z)V
    .locals 0

    iget p1, p0, Lfnd;->b:I

    return-void
.end method

.method public final synthetic c()V
    .locals 1

    iget v0, p0, Lfnd;->b:I

    return-void
.end method

.method public final d(Z)V
    .locals 1

    iget v0, p0, Lfnd;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfnd;->a:Ljava/lang/Object;

    check-cast v0, Lfvx;

    iget-object v0, v0, Lfvx;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lifj;->onShutterTouchStart()V

    return-void

    :pswitch_0
    if-nez p1, :cond_0

    iget-object p1, p0, Lfnd;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-boolean v0, p1, Lfng;->l:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lfng;->g:Lifj;

    invoke-interface {p1}, Lifj;->onShutterButtonClick()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Lifj;->onShutterButtonDown()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic e(Z)V
    .locals 0

    iget p1, p0, Lfnd;->b:I

    return-void
.end method

.method public final synthetic f(Z)V
    .locals 0

    iget p1, p0, Lfnd;->b:I

    return-void
.end method
