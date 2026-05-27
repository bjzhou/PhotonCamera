.class public final Lnqg;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqg;

.field public static final b:Lnqg;

.field public static final c:Lnqg;

.field public static final d:Lnqg;

.field public static final e:Lnqg;

.field public static final f:Lnqg;

.field public static final g:Lnqg;

.field public static final h:Lnqg;

.field public static final i:[Lnqg;

.field private static k:I


# instance fields
.field public final j:I

.field private final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lnqg;

    const-string v1, "kUnknown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnqg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnqg;->a:Lnqg;

    new-instance v1, Lnqg;

    const-string v2, "kDeprecatedSingleExp"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnqg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnqg;->b:Lnqg;

    new-instance v2, Lnqg;

    const-string v4, "kShortExp"

    invoke-direct {v2, v4}, Lnqg;-><init>(Ljava/lang/String;)V

    sput-object v2, Lnqg;->c:Lnqg;

    new-instance v4, Lnqg;

    const-string v5, "kDeprecatedLongExp"

    invoke-direct {v4, v5}, Lnqg;-><init>(Ljava/lang/String;)V

    sput-object v4, Lnqg;->d:Lnqg;

    new-instance v5, Lnqg;

    const-string v6, "kBracketedExp"

    invoke-direct {v5, v6}, Lnqg;-><init>(Ljava/lang/String;)V

    sput-object v5, Lnqg;->e:Lnqg;

    new-instance v6, Lnqg;

    const-string v7, "kPostShutterAf"

    invoke-direct {v6, v7}, Lnqg;-><init>(Ljava/lang/String;)V

    sput-object v6, Lnqg;->f:Lnqg;

    new-instance v7, Lnqg;

    const-string v8, "kUltraShortExp"

    invoke-direct {v7, v8}, Lnqg;-><init>(Ljava/lang/String;)V

    sput-object v7, Lnqg;->g:Lnqg;

    new-instance v8, Lnqg;

    const-string v9, "kInvalidBurstFrameType"

    invoke-direct {v8, v9}, Lnqg;-><init>(Ljava/lang/String;)V

    sput-object v8, Lnqg;->h:Lnqg;

    const/16 v9, 0x8

    new-array v9, v9, [Lnqg;

    aput-object v0, v9, v3

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v4, v9, v0

    const/4 v0, 0x4

    aput-object v5, v9, v0

    const/4 v0, 0x5

    aput-object v6, v9, v0

    const/4 v0, 0x6

    aput-object v7, v9, v0

    const/4 v0, 0x7

    aput-object v8, v9, v0

    sput-object v9, Lnqg;->i:[Lnqg;

    sput v3, Lnqg;->k:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqg;->l:Ljava/lang/String;

    sget p1, Lnqg;->k:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnqg;->k:I

    iput p1, p0, Lnqg;->j:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqg;->l:Ljava/lang/String;

    iput p2, p0, Lnqg;->j:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lnqg;->k:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqg;->l:Ljava/lang/String;

    return-object v0
.end method
