.class public final Lmg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lmg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lahx;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lahx;->c:Lahx;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "superState must be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Laut;
    .locals 1

    new-instance v0, Laut;

    invoke-direct {v0, p0, p1}, Laut;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmg;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lmg;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Laut;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance v0, Laub;

    invoke-direct {v0, p1, v1}, Laub;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_1
    invoke-static {p1, v1}, Lmg;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lahx;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-instance v0, Laam;

    invoke-direct {v0, p1, v1}, Laam;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lnp;

    invoke-direct {v0, p1, v1}, Lnp;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lbv;

    invoke-direct {v0, p1, v1}, Lbv;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lmh;

    invoke-direct {v0, p1, v1}, Lmh;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmg;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2}, Lmg;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Laut;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance v0, Laub;

    invoke-direct {v0, p1, p2}, Laub;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_1
    invoke-static {p1, p2}, Lmg;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lahx;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-instance v0, Laam;

    invoke-direct {v0, p1, p2}, Laam;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lnp;

    invoke-direct {v0, p1, p2}, Lnp;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lbv;

    invoke-direct {v0, p1, p2}, Lbv;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lmh;

    invoke-direct {v0, p1, p2}, Lmh;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmg;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Laut;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Laub;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lahx;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Laam;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Lnp;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Lbv;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lmh;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
