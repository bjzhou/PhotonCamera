.class public final Lcsv;
.super Ljava/lang/Object;


# instance fields
.field public a:Lkdj;

.field public b:Ljava/io/File;

.field public c:Lgxn;

.field public d:Lgxr;

.field public e:Lmqp;

.field public f:Lkqi;

.field public g:Lkaf;

.field public h:I

.field public i:J

.field public j:Lgxz;

.field public k:B

.field private l:J

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lcsv;->e:Lmqp;

    return-void
.end method


# virtual methods
.method public final a()Lcsw;
    .locals 18

    move-object/from16 v0, p0

    iget-byte v1, v0, Lcsv;->k:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    iget-object v4, v0, Lcsv;->a:Lkdj;

    if-eqz v4, :cond_1

    iget-object v5, v0, Lcsv;->b:Ljava/io/File;

    if-eqz v5, :cond_1

    iget-object v6, v0, Lcsv;->c:Lgxn;

    if-eqz v6, :cond_1

    iget-object v7, v0, Lcsv;->d:Lgxr;

    if-eqz v7, :cond_1

    iget-object v9, v0, Lcsv;->f:Lkqi;

    if-eqz v9, :cond_1

    iget-object v10, v0, Lcsv;->g:Lkaf;

    if-eqz v10, :cond_1

    iget-object v1, v0, Lcsv;->j:Lgxz;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcsw;

    iget-object v8, v0, Lcsv;->e:Lmqp;

    iget v11, v0, Lcsv;->h:I

    iget-wide v12, v0, Lcsv;->i:J

    iget-wide v14, v0, Lcsv;->l:J

    iget v3, v0, Lcsv;->m:I

    move/from16 v16, v3

    move-object v3, v2

    move-object/from16 v17, v1

    invoke-direct/range {v3 .. v17}, Lcsw;-><init>(Lkdj;Ljava/io/File;Lgxn;Lgxr;Lmqp;Lkqi;Lkaf;IJJILgxz;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcsv;->a:Lkdj;

    if-nez v2, :cond_2

    const-string v2, " exifInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, v0, Lcsv;->b:Ljava/io/File;

    if-nez v2, :cond_3

    const-string v2, " filePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, v0, Lcsv;->c:Lgxn;

    if-nez v2, :cond_4

    const-string v2, " gcaMediaFile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v2, v0, Lcsv;->d:Lgxr;

    if-nez v2, :cond_5

    const-string v2, " gcaMediaGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v2, v0, Lcsv;->f:Lkqi;

    if-nez v2, :cond_6

    const-string v2, " mimeType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v2, v0, Lcsv;->g:Lkaf;

    if-nez v2, :cond_7

    const-string v2, " size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-byte v2, v0, Lcsv;->k:B

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_8

    const-string v2, " orientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-byte v2, v0, Lcsv;->k:B

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    const-string v2, " takenTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-byte v2, v0, Lcsv;->k:B

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_a

    const-string v2, " requestProcessingTimeMilliseconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-byte v2, v0, Lcsv;->k:B

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_b

    const-string v2, " retries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v2, v0, Lcsv;->j:Lgxz;

    if-nez v2, :cond_c

    const-string v2, " shotInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcsv;->l:J

    iget-byte p1, p0, Lcsv;->k:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcsv;->k:B

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcsv;->m:I

    iget-byte p1, p0, Lcsv;->k:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcsv;->k:B

    return-void
.end method
