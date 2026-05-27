.class public final Ljgh;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljhk;

.field public final b:Z

.field public final c:Z

.field public final d:[I

.field public final e:I

.field public final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljay;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljay;-><init>(I)V

    sput-object v0, Ljgh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljhk;ZZ[II[I)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-object p1, p0, Ljgh;->a:Ljhk;

    iput-boolean p2, p0, Ljgh;->b:Z

    iput-boolean p3, p0, Ljgh;->c:Z

    iput-object p4, p0, Ljgh;->d:[I

    iput p5, p0, Ljgh;->e:I

    iput-object p6, p0, Ljgh;->f:[I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Ljgh;->a:Ljhk;

    const/4 v2, 0x1

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-boolean p2, p0, Ljgh;->b:Z

    const/4 v1, 0x2

    invoke-static {p1, v1, p2}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Ljgh;->c:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Ljgh;->d:[I

    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Ljhp;->m(Landroid/os/Parcel;I[I)V

    iget p2, p0, Ljgh;->e:I

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-object p2, p0, Ljgh;->f:[I

    const/4 v1, 0x6

    invoke-static {p1, v1, p2}, Ljhp;->m(Landroid/os/Parcel;I[I)V

    invoke-static {p1, v0}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
