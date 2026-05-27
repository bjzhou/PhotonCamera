.class public final Lnqp;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqp;

.field public static final b:Lnqp;

.field public static final c:Lnqp;

.field public static final d:Lnqp;

.field public static final e:Lnqp;

.field public static final f:Lnqp;

.field public static final g:Lnqp;

.field public static final h:Lnqp;

.field public static final i:Lnqp;

.field private static final k:[Lnqp;

.field private static l:I


# instance fields
.field public final j:I

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lnqp;

    invoke-direct {v0}, Lnqp;-><init>()V

    sput-object v0, Lnqp;->a:Lnqp;

    new-instance v1, Lnqp;

    const-string v2, "kNone"

    invoke-direct {v1, v2}, Lnqp;-><init>(Ljava/lang/String;)V

    sput-object v1, Lnqp;->b:Lnqp;

    new-instance v2, Lnqp;

    const-string v3, "kFlipHorizontal"

    invoke-direct {v2, v3}, Lnqp;-><init>(Ljava/lang/String;)V

    sput-object v2, Lnqp;->c:Lnqp;

    new-instance v3, Lnqp;

    const-string v4, "kRotate180"

    invoke-direct {v3, v4}, Lnqp;-><init>(Ljava/lang/String;)V

    sput-object v3, Lnqp;->d:Lnqp;

    new-instance v4, Lnqp;

    const-string v5, "kFlipVertical"

    invoke-direct {v4, v5}, Lnqp;-><init>(Ljava/lang/String;)V

    sput-object v4, Lnqp;->e:Lnqp;

    new-instance v5, Lnqp;

    const-string v6, "kTranspose"

    invoke-direct {v5, v6}, Lnqp;-><init>(Ljava/lang/String;)V

    sput-object v5, Lnqp;->f:Lnqp;

    new-instance v6, Lnqp;

    const-string v7, "kRotateCw"

    invoke-direct {v6, v7}, Lnqp;-><init>(Ljava/lang/String;)V

    sput-object v6, Lnqp;->g:Lnqp;

    new-instance v7, Lnqp;

    const-string v8, "kTranspose180"

    invoke-direct {v7, v8}, Lnqp;-><init>(Ljava/lang/String;)V

    sput-object v7, Lnqp;->h:Lnqp;

    new-instance v8, Lnqp;

    const-string v9, "kRotateCcw"

    invoke-direct {v8, v9}, Lnqp;-><init>(Ljava/lang/String;)V

    sput-object v8, Lnqp;->i:Lnqp;

    const/16 v9, 0x9

    new-array v9, v9, [Lnqp;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v3, v9, v0

    const/4 v0, 0x4

    aput-object v4, v9, v0

    const/4 v0, 0x5

    aput-object v5, v9, v0

    const/4 v0, 0x6

    aput-object v6, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    sput-object v9, Lnqp;->k:[Lnqp;

    sput v10, Lnqp;->l:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kInvalid"

    iput-object v0, p0, Lnqp;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnqp;->j:I

    const/4 v0, 0x1

    sput v0, Lnqp;->l:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqp;->m:Ljava/lang/String;

    sget p1, Lnqp;->l:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnqp;->l:I

    iput p1, p0, Lnqp;->j:I

    return-void
.end method

.method public static a(I)Lnqp;
    .locals 4

    sget-object v0, Lnqp;->k:[Lnqp;

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ge p0, v2, :cond_2

    if-ltz p0, :cond_1

    aget-object v0, v0, p0

    iget v3, v0, Lnqp;->j:I

    if-eq v3, p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    goto :goto_0

    :cond_2
    :goto_0
    sget-object v0, Lnqp;->k:[Lnqp;

    if-ge v1, v2, :cond_4

    aget-object v0, v0, v1

    iget v3, v0, Lnqp;->j:I

    if-ne v3, p0, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-class v1, Lnqp;

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

    iget-object v0, p0, Lnqp;->m:Ljava/lang/String;

    return-object v0
.end method
