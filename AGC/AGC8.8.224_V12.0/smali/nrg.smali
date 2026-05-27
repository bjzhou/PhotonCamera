.class public final Lnrg;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnrg;

.field public static final b:Lnrg;

.field public static final c:Lnrg;

.field public static final d:Lnrg;

.field public static final e:Lnrg;

.field public static final f:Lnrg;

.field public static final g:Lnrg;

.field public static final h:Lnrg;

.field public static final i:Lnrg;

.field public static final j:Lnrg;

.field public static final k:Lnrg;

.field public static final l:Lnrg;

.field public static final m:Lnrg;

.field public static final n:Lnrg;

.field public static final o:Lnrg;

.field public static final p:Lnrg;

.field private static final r:[Lnrg;


# instance fields
.field public final q:I

.field private final s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lnrg;

    const-string v1, "kInvalid"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnrg;->a:Lnrg;

    new-instance v1, Lnrg;

    const-string v2, "kRearRegular"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnrg;->b:Lnrg;

    new-instance v2, Lnrg;

    const-string v4, "kRearRegularBinned"

    const/16 v5, 0xa

    invoke-direct {v2, v4, v5}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnrg;->c:Lnrg;

    new-instance v4, Lnrg;

    const-string v6, "kRearRegularRemosaicked"

    const/16 v7, 0xb

    invoke-direct {v4, v6, v7}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnrg;->d:Lnrg;

    new-instance v6, Lnrg;

    const-string v8, "kRearTelephoto"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnrg;->e:Lnrg;

    new-instance v8, Lnrg;

    const-string v10, "kRearTelephotoBinned"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lnrg;->f:Lnrg;

    new-instance v10, Lnrg;

    const-string v12, "kRearTelephotoRemosaicked"

    const/16 v13, 0xc

    invoke-direct {v10, v12, v13}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lnrg;->g:Lnrg;

    new-instance v12, Lnrg;

    const-string v14, "kRearUltrawide"

    const/16 v15, 0x8

    invoke-direct {v12, v14, v15}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lnrg;->h:Lnrg;

    new-instance v14, Lnrg;

    const-string v13, "kRearUltrawideBinned"

    const/16 v7, 0x9

    invoke-direct {v14, v13, v7}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lnrg;->i:Lnrg;

    new-instance v13, Lnrg;

    const-string v5, "kRearLogical"

    const/4 v7, 0x5

    invoke-direct {v13, v5, v7}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lnrg;->j:Lnrg;

    new-instance v5, Lnrg;

    const-string v15, "kFrontRegular"

    const/4 v11, 0x1

    invoke-direct {v5, v15, v11}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnrg;->k:Lnrg;

    new-instance v15, Lnrg;

    const-string v7, "kFrontUltrawide"

    const/4 v9, 0x2

    invoke-direct {v15, v7, v9}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lnrg;->l:Lnrg;

    new-instance v7, Lnrg;

    const-string v9, "kFrontLogical"

    const/4 v11, 0x3

    invoke-direct {v7, v9, v11}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnrg;->m:Lnrg;

    new-instance v9, Lnrg;

    const-string v11, "kFrontInfrared"

    const/4 v3, 0x6

    invoke-direct {v9, v11, v3}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnrg;->n:Lnrg;

    new-instance v11, Lnrg;

    const-string v3, "kFrontSecondary"

    move-object/from16 v17, v9

    const/16 v9, 0xd

    invoke-direct {v11, v3, v9}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnrg;->o:Lnrg;

    new-instance v3, Lnrg;

    const-string v9, "kCount"

    move-object/from16 v18, v11

    const/16 v11, 0xe

    invoke-direct {v3, v9, v11}, Lnrg;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnrg;->p:Lnrg;

    const/16 v9, 0x10

    new-array v9, v9, [Lnrg;

    const/16 v16, 0x0

    aput-object v0, v9, v16

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v4, v9, v0

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v8, v9, v0

    const/4 v0, 0x6

    aput-object v10, v9, v0

    const/4 v0, 0x7

    aput-object v12, v9, v0

    const/16 v0, 0x8

    aput-object v14, v9, v0

    const/16 v0, 0x9

    aput-object v13, v9, v0

    const/16 v0, 0xa

    aput-object v5, v9, v0

    const/16 v0, 0xb

    aput-object v15, v9, v0

    const/16 v0, 0xc

    aput-object v7, v9, v0

    const/16 v0, 0xd

    aput-object v17, v9, v0

    aput-object v18, v9, v11

    const/16 v0, 0xf

    aput-object v3, v9, v0

    sput-object v9, Lnrg;->r:[Lnrg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnrg;->s:Ljava/lang/String;

    iput p2, p0, Lnrg;->q:I

    return-void
.end method

.method public static a(I)Lnrg;
    .locals 4

    sget-object v0, Lnrg;->r:[Lnrg;

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge p0, v2, :cond_2

    if-ltz p0, :cond_1

    aget-object v0, v0, p0

    iget v3, v0, Lnrg;->q:I

    if-eq v3, p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    goto :goto_0

    :cond_2
    :goto_0
    sget-object v0, Lnrg;->r:[Lnrg;

    if-ge v1, v2, :cond_4

    aget-object v0, v0, v1

    iget v3, v0, Lnrg;->q:I

    if-ne v3, p0, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-class v1, Lnrg;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with value "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnrg;->s:Ljava/lang/String;

    return-object v0
.end method
