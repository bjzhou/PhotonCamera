.class public final Lerq;
.super Ljava/lang/Object;

# interfaces
.implements Lchg;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcie;I)V
    .locals 0

    iput p2, p0, Lerq;->b:I

    iput-object p1, p0, Lerq;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lert;I)V
    .locals 0

    iput p2, p0, Lerq;->b:I

    iput-object p1, p0, Lerq;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lerq;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lerq;->a:Ljava/lang/Object;

    check-cast v0, Lcie;

    iget-boolean v1, v0, Lcie;->B:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcie;->e:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->k()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lerq;->a:Ljava/lang/Object;

    check-cast v0, Lert;

    invoke-virtual {v0}, Lert;->D()V

    iget-object v0, p0, Lerq;->a:Ljava/lang/Object;

    check-cast v0, Lert;

    iget-object v1, v0, Lert;->t:Lfbz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lert;->E()I

    move-result v0

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lfbz;->Z(II)V

    return-void

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    iget v0, p0, Lerq;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lerq;->a:Ljava/lang/Object;

    check-cast v0, Lcie;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcie;->B:Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lerq;->a:Ljava/lang/Object;

    check-cast v0, Lert;

    iget-object v0, v0, Lert;->t:Lfbz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lfbz;->Z(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
