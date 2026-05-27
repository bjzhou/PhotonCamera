.class public final Ljte;
.super Ljava/lang/Object;

# interfaces
.implements Ljed;


# instance fields
.field final a:Lkgd;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lkgd;I[B[B)V
    .locals 0

    iput p2, p0, Ljte;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljte;->a:Lkgd;

    return-void
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ljte;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget v0, p1, Lcom/google/android/gms/common/api/Status;->g:I

    if-nez v0, :cond_2

    iget-object p1, p0, Ljte;->a:Lkgd;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkgd;->i(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget v0, p1, Lcom/google/android/gms/common/api/Status;->g:I

    if-eqz v0, :cond_1

    const/16 v1, 0xfa1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljte;->a:Lkgd;

    new-instance v1, Ljda;

    invoke-direct {v1, p1}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lkgd;->h(Ljava/lang/Exception;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Ljte;->a:Lkgd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkgd;->i(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/16 v1, 0xfa2

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Ljte;->a:Lkgd;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkgd;->i(Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Ljte;->a:Lkgd;

    new-instance v1, Ljda;

    invoke-direct {v1, p1}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lkgd;->h(Ljava/lang/Exception;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
