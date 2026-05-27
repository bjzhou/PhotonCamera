.class public final Lbvf;
.super Ljava/lang/Object;

# interfaces
.implements Lbva;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lbvf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lbkc;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Lbkc;-><init>([B[B[B)V

    iput-object p1, p0, Lbvf;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lbvf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvf;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    iput p2, p0, Lbvf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvf;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Lbve;)Lbuz;
    .locals 5

    iget v0, p0, Lbvf;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lbup;

    iget-object v0, p0, Lbvf;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {p1, v0, v2, v1}, Lbup;-><init>(Landroid/content/Context;I[C)V

    return-object p1

    :pswitch_0
    new-instance p1, Lbup;

    iget-object v0, p0, Lbvf;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {p1, v0, v2, v1}, Lbup;-><init>(Landroid/content/Context;I[B)V

    return-object p1

    :pswitch_1
    new-instance p1, Lbvn;

    iget-object v0, p0, Lbvf;->b:Ljava/lang/Object;

    check-cast v0, Lbkc;

    invoke-direct {p1, v0, v1, v1, v1}, Lbvn;-><init>(Lbkc;[B[B[B)V

    return-object p1

    :pswitch_2
    new-instance p1, Lbuk;

    iget-object v0, p0, Lbvf;->b:Ljava/lang/Object;

    sget-object v1, Lbvd;->a:Lbvd;

    check-cast v0, Landroid/content/res/Resources;

    invoke-direct {p1, v0, v1, v2}, Lbuk;-><init>(Landroid/content/res/Resources;Lbuz;I)V

    return-object p1

    :pswitch_3
    new-instance v0, Lbuk;

    iget-object v1, p0, Lbvf;->b:Ljava/lang/Object;

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    invoke-virtual {p1, v3, v4}, Lbve;->a(Ljava/lang/Class;Ljava/lang/Class;)Lbuz;

    move-result-object p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1, v2}, Lbuk;-><init>(Landroid/content/res/Resources;Lbuz;I)V

    return-object v0

    :pswitch_4
    new-instance v0, Lbuk;

    iget-object v1, p0, Lbvf;->b:Ljava/lang/Object;

    const-class v3, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v3, v4}, Lbve;->a(Ljava/lang/Class;Ljava/lang/Class;)Lbuz;

    move-result-object p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1, v2}, Lbuk;-><init>(Landroid/content/res/Resources;Lbuz;I)V

    return-object v0

    :pswitch_5
    new-instance p1, Lbup;

    iget-object v0, p0, Lbvf;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0, v2}, Lbup;-><init>(Landroid/content/Context;I)V

    return-object p1

    :pswitch_6
    new-instance v0, Lbuk;

    iget-object v1, p0, Lbvf;->b:Ljava/lang/Object;

    const-class v3, Landroid/net/Uri;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v3, v4}, Lbve;->a(Ljava/lang/Class;Ljava/lang/Class;)Lbuz;

    move-result-object p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1, v2}, Lbuk;-><init>(Landroid/content/res/Resources;Lbuz;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
