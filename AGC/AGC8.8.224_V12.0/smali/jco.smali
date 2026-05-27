.class public final Ljco;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljay;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljay;-><init>(I)V

    sput-object v0, Ljco;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-boolean p1, p0, Ljco;->a:Z

    iput-object p2, p0, Ljco;->b:Ljava/lang/String;

    invoke-static {p3}, Ljfc;->f(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ljco;->c:I

    invoke-static {p4}, Ljcb;->a(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ljco;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ljco;->c:I

    invoke-static {v0}, Ljfc;->f(I)I

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Ljco;->d:I

    invoke-static {v0}, Ljcb;->a(I)I

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-boolean v0, p0, Ljco;->a:Z

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Ljco;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v0, p0, Ljco;->c:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget v0, p0, Ljco;->d:I

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ljhp;->g(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
