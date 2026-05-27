.class public final Ljje;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field final c:Z

.field final d:Z

.field final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljhi;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljhi;-><init>(I)V

    sput-object v0, Ljje;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-object p1, p0, Ljje;->a:Ljava/lang/String;

    iput-boolean p2, p0, Ljje;->b:Z

    iput-boolean p3, p0, Ljje;->c:Z

    iput-boolean p4, p0, Ljje;->d:Z

    iput-boolean p5, p0, Ljje;->e:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Ljje;->a:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-boolean v0, p0, Ljje;->b:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Ljje;->c:Z

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Ljje;->d:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Ljje;->e:Z

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
