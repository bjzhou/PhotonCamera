.class public Lofk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final j:Ljava/util/ArrayDeque;

.field public static final k:Ljava/lang/Object;


# instance fields
.field public l:I

.field public m:[Loff;

.field public n:I

.field public o:[Lofh;

.field public p:I

.field public q:[Lofl;

.field public r:I

.field public s:[Lofn;

.field public t:I

.field public u:[Lofs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lofk;->j:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lofk;->k:Ljava/lang/Object;

    new-instance v0, Llqu;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Llqu;-><init>(I)V

    sput-object v0, Lofk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Loff;

    iput-object v1, p0, Lofk;->m:[Loff;

    new-array v1, v0, [Lofh;

    iput-object v1, p0, Lofk;->o:[Lofh;

    new-array v1, v0, [Lofl;

    iput-object v1, p0, Lofk;->q:[Lofl;

    new-array v1, v0, [Lofn;

    iput-object v1, p0, Lofk;->s:[Lofn;

    new-array v1, v0, [Lofs;

    iput-object v1, p0, Lofk;->u:[Lofs;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lofk;->m:[Loff;

    new-instance v3, Loff;

    invoke-direct {v3}, Loff;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lofk;->o:[Lofh;

    new-instance v3, Lofh;

    invoke-direct {v3}, Lofh;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lofk;->q:[Lofl;

    new-instance v3, Lofl;

    invoke-direct {v3}, Lofl;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lofk;->s:[Lofn;

    new-instance v3, Lofn;

    invoke-direct {v3}, Lofn;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lofk;->u:[Lofs;

    new-instance v3, Lofs;

    invoke-direct {v3}, Lofs;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lofk;->a()V

    return-void
.end method

.method static e(II[Lofi;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    iput p0, v1, Lofi;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static final f(I)V
    .locals 3

    if-ltz p0, :cond_0

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid event count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lofk;->l:I

    iput v0, p0, Lofk;->n:I

    iput v0, p0, Lofk;->p:I

    iput v0, p0, Lofk;->r:I

    iput v0, p0, Lofk;->t:I

    return-void
.end method

.method public b(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lofk;->l:I

    invoke-static {v0}, Lofk;->f(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lofk;->l:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lofk;->m:[Loff;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lofi;->a(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lofk;->n:I

    invoke-static {v1}, Lofk;->f(I)V

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lofk;->n:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lofk;->o:[Lofh;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lofi;->a(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lofk;->p:I

    invoke-static {v1}, Lofk;->f(I)V

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lofk;->p:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lofk;->q:[Lofl;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lofi;->a(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lofk;->r:I

    invoke-static {v1}, Lofk;->f(I)V

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lofk;->r:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lofk;->s:[Lofn;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lofi;->a(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lofk;->t:I

    invoke-static {v1}, Lofk;->f(I)V

    :goto_4
    iget v1, p0, Lofk;->t:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lofk;->u:[Lofs;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lofi;->a(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public c()V
    .locals 3

    invoke-virtual {p0}, Lofk;->a()V

    sget-object v0, Lofk;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lofk;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(I)V
    .locals 2

    iget v0, p0, Lofk;->l:I

    iget-object v1, p0, Lofk;->m:[Loff;

    invoke-static {p1, v0, v1}, Lofk;->e(II[Lofi;)V

    iget v0, p0, Lofk;->n:I

    iget-object v1, p0, Lofk;->o:[Lofh;

    invoke-static {p1, v0, v1}, Lofk;->e(II[Lofi;)V

    iget v0, p0, Lofk;->p:I

    iget-object v1, p0, Lofk;->q:[Lofl;

    invoke-static {p1, v0, v1}, Lofk;->e(II[Lofi;)V

    iget v0, p0, Lofk;->r:I

    iget-object v1, p0, Lofk;->s:[Lofn;

    invoke-static {p1, v0, v1}, Lofk;->e(II[Lofi;)V

    iget v0, p0, Lofk;->t:I

    iget-object v1, p0, Lofk;->u:[Lofs;

    invoke-static {p1, v0, v1}, Lofk;->e(II[Lofi;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lofk;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lofk;->l:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lofk;->m:[Loff;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lofi;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lofk;->n:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lofk;->n:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lofk;->o:[Lofh;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lofi;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lofk;->p:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lofk;->p:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lofk;->q:[Lofl;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lofi;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget v1, p0, Lofk;->r:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lofk;->r:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lofk;->s:[Lofn;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lofi;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget v1, p0, Lofk;->t:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget v1, p0, Lofk;->t:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lofk;->u:[Lofs;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lofi;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method
