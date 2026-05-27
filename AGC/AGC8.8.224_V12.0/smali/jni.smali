.class public final Ljni;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:[[B

.field public final d:[[B

.field public final e:[[B

.field public final f:[[B

.field public final g:[I

.field public final h:[[B

.field public final i:[I

.field public final j:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljnd;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljnd;-><init>(I)V

    sput-object v0, Ljni;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B[I[[B)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-object p1, p0, Ljni;->a:Ljava/lang/String;

    iput-object p2, p0, Ljni;->b:[B

    iput-object p3, p0, Ljni;->c:[[B

    iput-object p4, p0, Ljni;->d:[[B

    iput-object p5, p0, Ljni;->e:[[B

    iput-object p6, p0, Ljni;->f:[[B

    iput-object p7, p0, Ljni;->g:[I

    iput-object p8, p0, Ljni;->h:[[B

    iput-object p9, p0, Ljni;->i:[I

    iput-object p10, p0, Ljni;->j:[[B

    return-void
.end method

.method private static a([I)Ljava/util/List;
    .locals 3

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static b([[B)Ljava/util/List;
    .locals 4

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Ljhp;->ab(Ljava/lang/Object;)V

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static c([I)Ljava/util/List;
    .locals 5

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    new-instance v2, Ljnn;

    aget v3, p0, v0

    add-int/lit8 v4, v0, 0x1

    aget v4, p0, v4

    invoke-direct {v2, v3, v4}, Ljnn;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private static d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V
    .locals 4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    aget-object v2, p2, v1

    if-nez p1, :cond_1

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljhp;->ab(Ljava/lang/Object;)V

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljni;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljni;

    iget-object v0, p0, Ljni;->a:Ljava/lang/String;

    iget-object v2, p1, Ljni;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Ljpw;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljni;->b:[B

    iget-object v2, p1, Ljni;->b:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljni;->c:[[B

    invoke-static {v0}, Ljni;->b([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Ljni;->c:[[B

    invoke-static {v2}, Ljni;->b([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Ljpw;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljni;->d:[[B

    invoke-static {v0}, Ljni;->b([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Ljni;->d:[[B

    invoke-static {v2}, Ljni;->b([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Ljpw;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljni;->e:[[B

    invoke-static {v0}, Ljni;->b([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Ljni;->e:[[B

    invoke-static {v2}, Ljni;->b([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Ljpw;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljni;->f:[[B

    invoke-static {v0}, Ljni;->b([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Ljni;->f:[[B

    invoke-static {v2}, Ljni;->b([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Ljpw;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljni;->g:[I

    invoke-static {v0}, Ljni;->a([I)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Ljni;->g:[I

    invoke-static {v2}, Ljni;->a([I)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Ljpw;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljni;->h:[[B

    invoke-static {v0}, Ljni;->b([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Ljni;->h:[[B

    invoke-static {v2}, Ljni;->b([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Ljpw;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljni;->i:[I

    invoke-static {v0}, Ljni;->c([I)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Ljni;->i:[I

    invoke-static {v2}, Ljni;->c([I)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Ljpw;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljni;->j:[[B

    invoke-static {v0}, Ljni;->b([[B)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Ljni;->j:[[B

    invoke-static {p1}, Ljni;->b([[B)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Ljpw;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExperimentTokens"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljni;->a:Ljava/lang/String;

    const-string v2, "null"

    const-string v3, "\'"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljni;->b:[B

    const-string v4, ", direct=="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljni;->c:[[B

    const-string v3, "GAIA="

    invoke-static {v0, v3, v2}, Ljni;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljni;->d:[[B

    const-string v3, "PSEUDO="

    invoke-static {v0, v3, v2}, Ljni;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljni;->e:[[B

    const-string v3, "ALWAYS="

    invoke-static {v0, v3, v2}, Ljni;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljni;->f:[[B

    const-string v3, "OTHER="

    invoke-static {v0, v3, v2}, Ljni;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    const-string v2, ", weak="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljni;->g:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljni;->h:[[B

    const-string v3, "directs="

    invoke-static {v0, v3, v2}, Ljni;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    const-string v2, ", genDims="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljni;->i:[I

    invoke-static {v2}, Ljni;->c([I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljni;->j:[[B

    const-string v2, "external="

    invoke-static {v0, v2, v1}, Ljni;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Ljni;->a:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, Ljni;->b:[B

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ljhp;->j(Landroid/os/Parcel;I[B)V

    iget-object v0, p0, Ljni;->c:[[B

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ljhp;->k(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Ljni;->d:[[B

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Ljhp;->k(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Ljni;->e:[[B

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Ljhp;->k(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Ljni;->f:[[B

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Ljhp;->k(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Ljni;->g:[I

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Ljhp;->m(Landroid/os/Parcel;I[I)V

    iget-object v0, p0, Ljni;->h:[[B

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Ljhp;->k(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Ljni;->i:[I

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Ljhp;->m(Landroid/os/Parcel;I[I)V

    iget-object v0, p0, Ljni;->j:[[B

    const/16 v1, 0xb

    invoke-static {p1, v1, v0}, Ljhp;->k(Landroid/os/Parcel;I[[B)V

    invoke-static {p1, p2}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
