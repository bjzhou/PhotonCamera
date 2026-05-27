.class public final Lelt;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfvx;I)V
    .locals 0

    iput p2, p0, Lelt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lelt;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgxb;I[B[B[B)V
    .locals 0

    iput p2, p0, Lelt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lelt;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljew;I[B[B)V
    .locals 0

    iput p2, p0, Lelt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lelt;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lelt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lelt;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b(Lgxb;)Lelt;
    .locals 7

    new-instance v6, Lelt;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lelt;-><init>(Lgxb;I[B[B[B)V

    return-object v6
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget v0, p0, Lelt;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lelt;->b:Ljava/lang/Object;

    check-cast v0, Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lelt;->b:Ljava/lang/Object;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Ljvs;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lelt;->b:Ljava/lang/Object;

    check-cast v0, Lfvx;

    iget-object v0, v0, Lfvx;->g:Ljava/lang/Object;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lelt;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbf;

    iget-object v0, v0, Ldbf;->b:Ljwb;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lelt;->b:Ljava/lang/Object;

    check-cast v0, Lgxb;

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lelt;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lelt;->a()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lelt;->a()Ljvs;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
