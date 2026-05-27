.class public final Ldwl;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgxb;I[B[B[B)V
    .locals 0

    iput p2, p0, Ldwl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwl;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgxb;I[B[B[B[B)V
    .locals 0

    iput p2, p0, Ldwl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwl;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llij;I[B[B[B)V
    .locals 0

    iput p2, p0, Ldwl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwl;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Ldwl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwl;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/res/Resources;
    .locals 1

    iget v0, p0, Ldwl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldwl;->b:Ljava/lang/Object;

    check-cast v0, Lgxb;

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ldwl;->b:Ljava/lang/Object;

    check-cast v0, Lgxb;

    iget-object v0, v0, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldwl;->b:Ljava/lang/Object;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Ldwl;->b:Ljava/lang/Object;

    check-cast v0, Llij;

    iget-object v0, v0, Llij;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/content/res/Resources;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ldwl;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ldwl;->a()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Ldwl;->a()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Ldwl;->a()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Ldwl;->a()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
