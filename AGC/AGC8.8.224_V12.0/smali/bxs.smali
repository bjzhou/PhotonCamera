.class public final Lbxs;
.super Ljava/lang/Object;

# interfaces
.implements Lbqh;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbxs;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILbqf;)Lbsn;
    .locals 0

    iget p2, p0, Lbxs;->a:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Ljava/io/File;

    new-instance p2, Lbvt;

    invoke-direct {p2, p1}, Lbvt;-><init>(Ljava/lang/Object;)V

    return-object p2

    :pswitch_0
    check-cast p1, Landroid/graphics/Bitmap;

    new-instance p2, Lbxn;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lbxn;-><init>(Landroid/graphics/Bitmap;I)V

    return-object p2

    :pswitch_1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lbxq;->g(Landroid/graphics/drawable/Drawable;)Lbsn;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/Object;Lbqf;)Z
    .locals 1

    iget p2, p0, Lbxs;->a:I

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    check-cast p1, Ljava/io/File;

    return v0

    :pswitch_0
    check-cast p1, Landroid/graphics/Bitmap;

    return v0

    :pswitch_1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
