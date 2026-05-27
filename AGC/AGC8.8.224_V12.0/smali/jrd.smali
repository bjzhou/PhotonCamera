.class public final Ljrd;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljqn;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljqn;-><init>(I)V

    sput-object v0, Ljrd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput p1, p0, Ljrd;->a:I

    iput-boolean p2, p0, Ljrd;->b:Z

    iput-boolean p3, p0, Ljrd;->c:Z

    iput-boolean p4, p0, Ljrd;->d:Z

    iput-boolean p5, p0, Ljrd;->e:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Ljrd;->a:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Ljrd;->b:Z

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Ljrd;->c:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Ljrd;->d:Z

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Ljrd;->e:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
