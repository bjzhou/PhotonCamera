.class public final Ljbj;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final l:[Ljava/lang/String;


# instance fields
.field public final a:Ljbw;

.field public final b:[B

.field public final c:[I

.field public final d:[Ljava/lang/String;

.field public final e:[I

.field public final f:[[B

.field public final g:[Ljni;

.field public final h:Z

.field public i:Ljbv;

.field public final j:I

.field public final k:Loga;

.field private final m:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljay;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljay;-><init>(I)V

    sput-object v0, Ljbj;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Ljbj;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljbw;Loga;[B[I[Ljava/lang/String;[II)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-object p1, p0, Ljbj;->a:Ljbw;

    iput-object p2, p0, Ljbj;->k:Loga;

    iput-object p3, p0, Ljbj;->b:[B

    iput-object p4, p0, Ljbj;->c:[I

    iput-object p5, p0, Ljbj;->d:[Ljava/lang/String;

    iput-object p6, p0, Ljbj;->e:[I

    const/4 p1, 0x0

    iput-object p1, p0, Ljbj;->f:[[B

    iput-object p1, p0, Ljbj;->g:[Ljni;

    const/4 p2, 0x1

    iput-boolean p2, p0, Ljbj;->h:Z

    iput-object p1, p0, Ljbj;->m:[Ljava/lang/String;

    iput p7, p0, Ljbj;->j:I

    return-void
.end method

.method public constructor <init>(Ljbw;[B[I[Ljava/lang/String;[I[[BZ[Ljni;Ljbv;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-object p1, p0, Ljbj;->a:Ljbw;

    iput-object p2, p0, Ljbj;->b:[B

    iput-object p3, p0, Ljbj;->c:[I

    iput-object p4, p0, Ljbj;->d:[Ljava/lang/String;

    iput-object p5, p0, Ljbj;->e:[I

    iput-object p6, p0, Ljbj;->f:[[B

    iput-boolean p7, p0, Ljbj;->h:Z

    iput-object p8, p0, Ljbj;->g:[Ljni;

    iput-object p9, p0, Ljbj;->i:Ljbv;

    iput-object p10, p0, Ljbj;->m:[Ljava/lang/String;

    iput p11, p0, Ljbj;->j:I

    const/4 p1, 0x0

    iput-object p1, p0, Ljbj;->k:Loga;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljbj;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Ljbj;

    iget-object v1, p0, Ljbj;->a:Ljbw;

    iget-object v3, p1, Ljbj;->a:Ljbw;

    invoke-static {v1, v3}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljbj;->b:[B

    iget-object v3, p1, Ljbj;->b:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljbj;->c:[I

    iget-object v3, p1, Ljbj;->c:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljbj;->d:[Ljava/lang/String;

    iget-object v3, p1, Ljbj;->d:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljbj;->k:Loga;

    iget-object v3, p1, Ljbj;->k:Loga;

    invoke-static {v1, v3}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljbj;->e:[I

    iget-object v3, p1, Ljbj;->e:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljbj;->f:[[B

    iget-object v3, p1, Ljbj;->f:[[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljbj;->g:[Ljni;

    iget-object v3, p1, Ljbj;->g:[Ljni;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljbj;->m:[Ljava/lang/String;

    iget-object v3, p1, Ljbj;->m:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Ljbj;->h:Z

    iget-boolean v3, p1, Ljbj;->h:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Ljbj;->i:Ljbv;

    iget-object v3, p1, Ljbj;->i:Ljbv;

    invoke-static {v1, v3}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Ljbj;->j:I

    iget p1, p1, Ljbj;->j:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ljbj;->a:Ljbw;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ljbj;->b:[B

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Ljbj;->c:[I

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Ljbj;->d:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Ljbj;->k:Loga;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Ljbj;->e:[I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Ljbj;->f:[[B

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Ljbj;->g:[Ljni;

    aput-object v2, v0, v1

    iget-boolean v1, p0, Ljbj;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x9

    iget-object v2, p0, Ljbj;->m:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Ljbj;->i:Ljbv;

    aput-object v2, v0, v1

    iget v1, p0, Ljbj;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogEventParcelable["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljbj;->a:Ljbw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", LogEventBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljbj;->b:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", TestCodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljbj;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MendelPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljbj;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", LogEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljbj;->k:Loga;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", , ExperimentIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljbj;->e:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljbj;->f:[[B

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentTokensParcelables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljbj;->g:[Ljni;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MendelPackagesToFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljbj;->m:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AddPhenotypeExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljbj;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", LogVerifierResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljbj;->i:Ljbv;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljbv;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "EventCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljbj;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Ljbj;->a:Ljbw;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Ljbj;->b:[B

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Ljhp;->j(Landroid/os/Parcel;I[B)V

    iget-object v1, p0, Ljbj;->c:[I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Ljhp;->m(Landroid/os/Parcel;I[I)V

    iget-object v1, p0, Ljbj;->d:[Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Ljhp;->q(Landroid/os/Parcel;I[Ljava/lang/String;)V

    iget-object v1, p0, Ljbj;->e:[I

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Ljhp;->m(Landroid/os/Parcel;I[I)V

    iget-object v1, p0, Ljbj;->f:[[B

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Ljhp;->k(Landroid/os/Parcel;I[[B)V

    iget-boolean v1, p0, Ljbj;->h:Z

    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Ljbj;->g:[Ljni;

    const/16 v2, 0x9

    invoke-static {p1, v2, v1, p2}, Ljhp;->s(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Ljbj;->i:Ljbv;

    const/16 v2, 0xb

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object p2, p0, Ljbj;->m:[Ljava/lang/String;

    if-nez p2, :cond_0

    sget-object p2, Ljbj;->l:[Ljava/lang/String;

    :cond_0
    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Ljhp;->q(Landroid/os/Parcel;I[Ljava/lang/String;)V

    iget p2, p0, Ljbj;->j:I

    const/16 v1, 0xd

    invoke-static {p1, v1, p2}, Ljhp;->g(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
