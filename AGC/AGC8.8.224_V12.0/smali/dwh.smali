.class public final Ldwh;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcvr;I[B[B)V
    .locals 0

    iput p2, p0, Ldwh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwh;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcvr;I[C[B)V
    .locals 0

    iput p2, p0, Ldwh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwh;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldja;I)V
    .locals 0

    iput p2, p0, Ldwh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwh;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgxb;I[B[B[B)V
    .locals 0

    iput p2, p0, Ldwh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwh;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgxb;I[B[B[B[B)V
    .locals 0

    iput p2, p0, Ldwh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwh;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llij;I[B[B[B)V
    .locals 0

    iput p2, p0, Ldwh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwh;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llyd;I[B)V
    .locals 0

    iput p2, p0, Ldwh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwh;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Ldwh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwh;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b(Lcvr;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method public static c(Lgxb;)Ldwh;
    .locals 7

    new-instance v6, Ldwh;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldwh;-><init>(Lgxb;I[B[B[B)V

    return-object v6
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget v0, p0, Ldwh;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldwh;->b:Ljava/lang/Object;

    check-cast v0, Llyd;

    iget-object v0, v0, Llyd;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ldwh;->b:Ljava/lang/Object;

    check-cast v0, Lhlf;

    invoke-virtual {v0}, Lhlf;->a()Lkqa;

    move-result-object v0

    iget-object v0, v0, Lkqa;->l:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldwh;->b:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-static {v0}, Ldwh;->b(Lcvr;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Ldwh;->b:Ljava/lang/Object;

    check-cast v0, Lcvr;

    iget-object v0, v0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Ldwh;->b:Ljava/lang/Object;

    check-cast v0, Lgxb;

    iget-object v0, v0, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Ldwh;->b:Ljava/lang/Object;

    check-cast v0, Lgxb;

    iget-object v0, v0, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Ldwh;->b:Ljava/lang/Object;

    check-cast v0, Lgxb;

    iget-object v0, v0, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Ldwh;->b:Ljava/lang/Object;

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Ldwh;->b:Ljava/lang/Object;

    check-cast v0, Llij;

    iget-object v0, v0, Llij;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/content/Context;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ldwh;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
