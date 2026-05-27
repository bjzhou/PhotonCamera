.class public final Loof;
.super Ljava/lang/Object;

# interfaces
.implements Looc;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    iput p2, p0, Loof;->b:I

    iput-object p1, p0, Loof;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;I)V
    .locals 0

    iput p2, p0, Loof;->b:I

    iput-object p1, p0, Loof;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lomo;I)V
    .locals 0

    iput p2, p0, Loof;->b:I

    iput-object p1, p0, Loof;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 3

    iget v0, p0, Loof;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Loof;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Loof;->a:Ljava/lang/Object;

    new-instance v1, Llfm;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Llfm;-><init>(Landroid/view/ViewGroup;I)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Loof;->a:Ljava/lang/Object;

    new-instance v1, Lood;

    invoke-direct {v1}, Lood;-><init>()V

    invoke-static {v0, v1, v1}, Lolp;->f(Lomo;Ljava/lang/Object;Loku;)Loku;

    move-result-object v0

    iput-object v0, v1, Lood;->a:Loku;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
