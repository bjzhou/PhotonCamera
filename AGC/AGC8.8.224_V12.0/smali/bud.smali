.class public final Lbud;
.super Ljava/lang/Object;

# interfaces
.implements Lbva;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbud;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lbve;)Lbuz;
    .locals 4

    iget v0, p0, Lbud;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v3, Lbup;

    invoke-virtual {p1, v0, v2}, Lbve;->a(Ljava/lang/Class;Ljava/lang/Class;)Lbuz;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lbup;-><init>(Lbuz;I)V

    return-object v3

    :pswitch_0
    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lbup;

    invoke-virtual {p1, v0, v2}, Lbve;->a(Ljava/lang/Class;Ljava/lang/Class;)Lbuz;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lbup;-><init>(Lbuz;I)V

    return-object v3

    :pswitch_1
    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    new-instance v3, Lbup;

    invoke-virtual {p1, v0, v2}, Lbve;->a(Ljava/lang/Class;Ljava/lang/Class;)Lbuz;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lbup;-><init>(Lbuz;I)V

    return-object v3

    :pswitch_2
    new-instance p1, Lbuf;

    invoke-direct {p1}, Lbuf;-><init>()V

    return-object p1

    :pswitch_3
    new-instance p1, Lbup;

    new-instance v0, Lbuc;

    invoke-direct {v0, v2}, Lbuc;-><init>(I)V

    invoke-direct {p1, v0, v2}, Lbup;-><init>(Lbua;I)V

    return-object p1

    :pswitch_4
    new-instance p1, Lbup;

    new-instance v0, Lbuc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbuc;-><init>(I)V

    invoke-direct {p1, v0, v2}, Lbup;-><init>(Lbua;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
