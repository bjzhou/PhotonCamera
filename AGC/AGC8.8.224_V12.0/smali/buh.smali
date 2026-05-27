.class public final Lbuh;
.super Ljava/lang/Object;

# interfaces
.implements Lbva;
.implements Lbuj;


# instance fields
.field private final a:Landroid/content/Context;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lbuh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbuh;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    iget v0, p0, Lbuh;->b:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Ljava/io/InputStream;

    return-object v0

    :pswitch_0
    const-class v0, Landroid/content/res/AssetFileDescriptor;

    return-object v0

    :pswitch_1
    const-class v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lbve;)Lbuz;
    .locals 2

    iget p1, p0, Lbuh;->b:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lbuk;

    iget-object v1, p0, Lbuh;->a:Landroid/content/Context;

    invoke-direct {p1, v1, p0, v0}, Lbuk;-><init>(Landroid/content/Context;Lbuj;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lbuk;

    iget-object v1, p0, Lbuh;->a:Landroid/content/Context;

    invoke-direct {p1, v1, p0, v0}, Lbuk;-><init>(Landroid/content/Context;Lbuj;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lbuk;

    iget-object v1, p0, Lbuh;->a:Landroid/content/Context;

    invoke-direct {p1, v1, p0, v0}, Lbuk;-><init>(Landroid/content/Context;Lbuj;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic c(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lbuh;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p2, p0, Lbuh;->a:Landroid/content/Context;

    invoke-static {p2, p2, p3, p1}, Lbxo;->a(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic d(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lbuh;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :pswitch_0
    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void

    :pswitch_1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
