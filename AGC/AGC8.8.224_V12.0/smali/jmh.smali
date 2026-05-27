.class public final Ljmh;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Ljlx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljhi;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljhi;-><init>(I)V

    sput-object v0, Ljmh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIZLjava/lang/String;Ljlx;)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-wide p1, p0, Ljmh;->a:J

    iput p3, p0, Ljmh;->b:I

    iput-boolean p4, p0, Ljmh;->c:Z

    iput-object p5, p0, Ljmh;->d:Ljava/lang/String;

    iput-object p6, p0, Ljmh;->e:Ljlx;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Ljmh;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljmh;

    iget-wide v2, p0, Ljmh;->a:J

    iget-wide v4, p1, Ljmh;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget v0, p0, Ljmh;->b:I

    iget v2, p1, Ljmh;->b:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Ljmh;->c:Z

    iget-boolean v2, p1, Ljmh;->c:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ljmh;->d:Ljava/lang/String;

    iget-object v2, p1, Ljmh;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljmh;->e:Ljlx;

    iget-object p1, p1, Ljmh;->e:Ljlx;

    invoke-static {v0, p1}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Ljmh;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Ljmh;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Ljmh;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastLocationRequest["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljmh;->a:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-string v1, "maxAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljmh;->a:J

    invoke-static {v1, v2, v0}, Ljne;->a(JLjava/lang/StringBuilder;)V

    :cond_0
    iget v1, p0, Ljmh;->b:I

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljmh;->b:I

    invoke-static {v1}, Ljmj;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Ljmh;->c:Z

    if-eqz v1, :cond_2

    const-string v1, ", bypass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Ljmh;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", moduleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljmh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Ljmh;->e:Ljlx;

    if-eqz v1, :cond_4

    const-string v1, ", impersonation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljmh;->e:Ljlx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-wide v1, p0, Ljmh;->a:J

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, v2}, Ljhp;->h(Landroid/os/Parcel;IJ)V

    iget v1, p0, Ljmh;->b:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Ljmh;->c:Z

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Ljmh;->d:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Ljmh;->e:Ljlx;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
