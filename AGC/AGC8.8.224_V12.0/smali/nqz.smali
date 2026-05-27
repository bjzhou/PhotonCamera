.class public final Lnqz;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqz;

.field public static final b:Lnqz;

.field public static final c:Lnqz;

.field public static final d:Lnqz;

.field public static final e:Lnqz;

.field public static final f:Lnqz;

.field public static final g:Lnqz;

.field public static final h:Lnqz;

.field public static final i:Lnqz;

.field public static final j:Lnqz;

.field public static final k:Lnqz;

.field private static final m:[Lnqz;

.field private static n:I


# instance fields
.field public final l:I

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lnqz;

    invoke-direct {v0}, Lnqz;-><init>()V

    sput-object v0, Lnqz;->a:Lnqz;

    new-instance v1, Lnqz;

    const-string v2, "kNv12"

    invoke-direct {v1, v2}, Lnqz;-><init>(Ljava/lang/String;)V

    sput-object v1, Lnqz;->b:Lnqz;

    new-instance v2, Lnqz;

    const-string v3, "kNv21"

    invoke-direct {v2, v3}, Lnqz;-><init>(Ljava/lang/String;)V

    sput-object v2, Lnqz;->c:Lnqz;

    new-instance v3, Lnqz;

    const-string v4, "kRgb"

    invoke-direct {v3, v4}, Lnqz;-><init>(Ljava/lang/String;)V

    sput-object v3, Lnqz;->d:Lnqz;

    new-instance v4, Lnqz;

    const-string v5, "kBgr"

    invoke-direct {v4, v5}, Lnqz;-><init>(Ljava/lang/String;)V

    sput-object v4, Lnqz;->e:Lnqz;

    new-instance v5, Lnqz;

    const-string v6, "kRgba"

    invoke-direct {v5, v6}, Lnqz;-><init>(Ljava/lang/String;)V

    sput-object v5, Lnqz;->f:Lnqz;

    new-instance v6, Lnqz;

    const-string v7, "kBgra"

    invoke-direct {v6, v7}, Lnqz;-><init>(Ljava/lang/String;)V

    sput-object v6, Lnqz;->g:Lnqz;

    new-instance v7, Lnqz;

    const-string v8, "kArgb"

    invoke-direct {v7, v8}, Lnqz;-><init>(Ljava/lang/String;)V

    sput-object v7, Lnqz;->h:Lnqz;

    new-instance v8, Lnqz;

    const-string v9, "kAbgr"

    invoke-direct {v8, v9}, Lnqz;-><init>(Ljava/lang/String;)V

    sput-object v8, Lnqz;->i:Lnqz;

    new-instance v9, Lnqz;

    const-string v10, "kRgb16"

    invoke-direct {v9, v10}, Lnqz;-><init>(Ljava/lang/String;)V

    sput-object v9, Lnqz;->j:Lnqz;

    new-instance v10, Lnqz;

    const-string v11, "kCount"

    invoke-direct {v10, v11}, Lnqz;-><init>(Ljava/lang/String;)V

    sput-object v10, Lnqz;->k:Lnqz;

    const/16 v11, 0xb

    new-array v11, v11, [Lnqz;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    aput-object v2, v11, v0

    const/4 v0, 0x3

    aput-object v3, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v6, v11, v0

    const/4 v0, 0x7

    aput-object v7, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v9, v11, v0

    const/16 v0, 0xa

    aput-object v10, v11, v0

    sput-object v11, Lnqz;->m:[Lnqz;

    sput v12, Lnqz;->n:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kUnknown"

    iput-object v0, p0, Lnqz;->o:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnqz;->l:I

    const/4 v0, 0x1

    sput v0, Lnqz;->n:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqz;->o:Ljava/lang/String;

    sget p1, Lnqz;->n:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnqz;->n:I

    iput p1, p0, Lnqz;->l:I

    return-void
.end method

.method public static a(I)Lnqz;
    .locals 4

    sget-object v0, Lnqz;->m:[Lnqz;

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ge p0, v2, :cond_2

    if-ltz p0, :cond_1

    aget-object v0, v0, p0

    iget v3, v0, Lnqz;->l:I

    if-eq v3, p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    goto :goto_0

    :cond_2
    :goto_0
    sget-object v0, Lnqz;->m:[Lnqz;

    if-ge v1, v2, :cond_4

    aget-object v0, v0, v1

    iget v3, v0, Lnqz;->l:I

    if-ne v3, p0, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-class v1, Lnqz;

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

    iget-object v0, p0, Lnqz;->o:Ljava/lang/String;

    return-object v0
.end method
