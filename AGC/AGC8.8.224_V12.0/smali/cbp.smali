.class public final synthetic Lcbp;
.super Ljava/lang/Object;

# interfaces
.implements Liky;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcbq;I)V
    .locals 0

    iput p2, p0, Lcbp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcca;I)V
    .locals 0

    iput p2, p0, Lcbp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcch;I)V
    .locals 0

    iput p2, p0, Lcbp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcch;I[B)V
    .locals 0

    iput p2, p0, Lcbp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcch;I[C)V
    .locals 0

    iput p2, p0, Lcbp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcch;I[S)V
    .locals 0

    iput p2, p0, Lcbp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcci;I)V
    .locals 0

    iput p2, p0, Lcbp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lccl;I)V
    .locals 0

    iput p2, p0, Lcbp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lccr;I)V
    .locals 0

    iput p2, p0, Lcbp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lmqp;)V
    .locals 1

    iget p1, p0, Lcbp;->b:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    check-cast p1, Lcch;

    iget-object p1, p1, Lcch;->a:Ljava/lang/Object;

    check-cast p1, Lccr;

    iput-object v0, p1, Lccr;->f:Likz;

    return-void

    :pswitch_0
    iget-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    check-cast p1, Lccr;

    iput-object v0, p1, Lccr;->e:Likz;

    return-void

    :pswitch_1
    iget-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    check-cast p1, Lcch;

    iget-object p1, p1, Lcch;->a:Ljava/lang/Object;

    check-cast p1, Lccl;

    iput-object v0, p1, Lccl;->c:Likz;

    return-void

    :pswitch_2
    iget-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    check-cast p1, Lccl;

    iput-object v0, p1, Lccl;->b:Likz;

    return-void

    :pswitch_3
    iget-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    check-cast p1, Lcch;

    iget-object p1, p1, Lcch;->a:Ljava/lang/Object;

    check-cast p1, Lcci;

    iput-object v0, p1, Lcci;->c:Likz;

    return-void

    :pswitch_4
    iget-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    check-cast p1, Lcci;

    iput-object v0, p1, Lcci;->b:Likz;

    return-void

    :pswitch_5
    iget-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    check-cast p1, Lcch;

    iget-object p1, p1, Lcch;->a:Ljava/lang/Object;

    check-cast p1, Lcca;

    iput-object v0, p1, Lcca;->c:Likz;

    return-void

    :pswitch_6
    iget-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    check-cast p1, Lcca;

    iput-object v0, p1, Lcca;->b:Likz;

    return-void

    :pswitch_7
    iget-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    check-cast p1, Lcca;

    iput-object v0, p1, Lcca;->c:Likz;

    return-void

    :pswitch_8
    iget-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    sget-object v0, Lmpx;->a:Lmpx;

    check-cast p1, Lcbq;

    iput-object v0, p1, Lcbq;->w:Lmqp;

    return-void

    :pswitch_9
    iget-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    sget-object v0, Lmpx;->a:Lmpx;

    check-cast p1, Lcbq;

    iput-object v0, p1, Lcbq;->y:Lmqp;

    return-void

    :pswitch_a
    iget-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    sget-object v0, Lmpx;->a:Lmpx;

    check-cast p1, Lcbq;

    iput-object v0, p1, Lcbq;->x:Lmqp;

    return-void

    :pswitch_b
    iget-object p1, p0, Lcbp;->a:Ljava/lang/Object;

    sget-object v0, Lmpx;->a:Lmpx;

    check-cast p1, Lcbq;

    iput-object v0, p1, Lcbq;->v:Lmqp;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
