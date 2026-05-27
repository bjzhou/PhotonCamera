.class public final Ljqp;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Ljtn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljqn;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljqn;-><init>(I)V

    sput-object v0, Ljqp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljtn;)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput p1, p0, Ljqp;->a:I

    iput-object p2, p0, Ljqp;->b:Ljava/util/List;

    iput-object p3, p0, Ljqp;->c:Ljtn;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Ljqp;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-object v1, p0, Ljqp;->b:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Ljhp;->t(Landroid/os/Parcel;ILjava/util/List;)V

    iget-object v1, p0, Ljqp;->c:Ljtn;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
