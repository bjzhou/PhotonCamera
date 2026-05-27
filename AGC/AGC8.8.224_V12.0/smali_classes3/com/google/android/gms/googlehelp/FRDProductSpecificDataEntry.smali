.class public Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;
.super Ljhn;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:I

.field final c:Ljava/util/List;

.field final d:Ljava/util/List;

.field final e:Ljava/util/List;

.field final f:Ljava/util/List;

.field final g:[[B

.field final h:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljhi;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljhi;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;[[BZ)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput p1, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->a:I

    iput p2, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->b:I

    iput-object p3, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->g:[[B

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->h:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;

    iget v1, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->a:I

    iget v3, p1, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->b:I

    iget v3, p1, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->b:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->f:Ljava/util/List;

    invoke-static {v1, v3}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->g:[[B

    iget-object v3, p1, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->g:[[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->h:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->h:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->c:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->d:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->e:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->f:Ljava/util/List;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->g:[[B

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->h:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->a:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->b:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->c:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ljhp;->r(Landroid/os/Parcel;ILjava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->d:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {p1, v2, v0}, Ljhp;->n(Landroid/os/Parcel;ILjava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->e:Ljava/util/List;

    const/4 v2, 0x6

    invoke-static {p1, v2, v0}, Ljhp;->r(Landroid/os/Parcel;ILjava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->f:Ljava/util/List;

    const/4 v2, 0x7

    invoke-static {p1, v2, v0}, Ljhp;->n(Landroid/os/Parcel;ILjava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->g:[[B

    const/16 v2, 0x8

    invoke-static {p1, v2, v0}, Ljhp;->k(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/FRDProductSpecificDataEntry;->h:Ljava/lang/Boolean;

    const/16 v2, 0x9

    invoke-static {p1, v2, v1}, Ljhp;->f(Landroid/os/Parcel;II)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
