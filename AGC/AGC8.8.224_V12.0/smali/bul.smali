.class public final Lbul;
.super Ljava/lang/Object;

# interfaces
.implements Lbva;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    iput p1, p0, Lbul;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lbze;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lbze;-><init>([Z)V

    iput-object p1, p0, Lbul;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lbul;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbul;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbun;I)V
    .locals 0

    iput p2, p0, Lbul;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbul;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Lbve;)Lbuz;
    .locals 5

    iget v0, p0, Lbul;->a:I

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lbuk;

    iget-object v2, p0, Lbul;->b:Ljava/lang/Object;

    const-class v3, Ljava/lang/Integer;

    const-class v4, Ljava/io/InputStream;

    invoke-virtual {p1, v3, v4}, Lbve;->a(Ljava/lang/Class;Ljava/lang/Class;)Lbuz;

    move-result-object p1

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2, p1, v1}, Lbuk;-><init>(Landroid/content/Context;Lbuz;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lbuk;

    iget-object v2, p0, Lbul;->b:Ljava/lang/Object;

    const-class v3, Ljava/lang/Integer;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v3, v4}, Lbve;->a(Ljava/lang/Class;Ljava/lang/Class;)Lbuz;

    move-result-object p1

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2, p1, v1}, Lbuk;-><init>(Landroid/content/Context;Lbuz;I)V

    return-object v0

    :pswitch_1
    new-instance p1, Lbvd;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lbvd;-><init>(I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lbup;

    iget-object v0, p0, Lbul;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lbup;-><init>(Lbun;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
