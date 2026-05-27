.class public Lcom/google/android/gms/wearable/AppTheme;
.super Ljhn;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljnd;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljnd;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/wearable/AppTheme;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljhn;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/wearable/AppTheme;->a:I

    iput v0, p0, Lcom/google/android/gms/wearable/AppTheme;->b:I

    iput v0, p0, Lcom/google/android/gms/wearable/AppTheme;->c:I

    iput v0, p0, Lcom/google/android/gms/wearable/AppTheme;->d:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/AppTheme;->a:I

    iput p2, p0, Lcom/google/android/gms/wearable/AppTheme;->b:I

    iput p3, p0, Lcom/google/android/gms/wearable/AppTheme;->c:I

    iput p4, p0, Lcom/google/android/gms/wearable/AppTheme;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/wearable/AppTheme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/wearable/AppTheme;

    iget v1, p0, Lcom/google/android/gms/wearable/AppTheme;->b:I

    iget v3, p1, Lcom/google/android/gms/wearable/AppTheme;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/wearable/AppTheme;->a:I

    iget v3, p1, Lcom/google/android/gms/wearable/AppTheme;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/wearable/AppTheme;->c:I

    iget v3, p1, Lcom/google/android/gms/wearable/AppTheme;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/wearable/AppTheme;->d:I

    iget p1, p1, Lcom/google/android/gms/wearable/AppTheme;->d:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/wearable/AppTheme;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/AppTheme;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/AppTheme;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/AppTheme;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/google/android/gms/wearable/AppTheme;->b:I

    iget v1, p0, Lcom/google/android/gms/wearable/AppTheme;->a:I

    iget v2, p0, Lcom/google/android/gms/wearable/AppTheme;->c:I

    iget v3, p0, Lcom/google/android/gms/wearable/AppTheme;->d:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppTheme {dynamicColor ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", colorTheme ="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", screenAlignment ="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", screenItemsSize ="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/wearable/AppTheme;->a:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1, v1, v0}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/wearable/AppTheme;->b:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/wearable/AppTheme;->c:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    const/4 v0, 0x3

    invoke-static {p1, v0, v1}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/wearable/AppTheme;->d:I

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ljhp;->g(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
