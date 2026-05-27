.class public final Lnqh;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqh;

.field public static final b:Lnqh;

.field public static final c:Lnqh;

.field public static final d:Lnqh;

.field public static final e:Lnqh;

.field public static final f:Lnqh;

.field public static final g:[Lnqh;


# instance fields
.field public final h:I

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lnqh;

    const-string v1, "kUnknown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnqh;->a:Lnqh;

    new-instance v1, Lnqh;

    const-string v2, "kOff"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnqh;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnqh;->b:Lnqh;

    new-instance v2, Lnqh;

    const-string v4, "kAuto"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lnqh;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnqh;->c:Lnqh;

    new-instance v4, Lnqh;

    const-string v6, "kUseSceneMode"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7}, Lnqh;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnqh;->d:Lnqh;

    new-instance v6, Lnqh;

    const-string v8, "kOffKeepState"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9}, Lnqh;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnqh;->e:Lnqh;

    new-instance v8, Lnqh;

    const-string v10, "kUseExtendedSceneMode"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11}, Lnqh;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lnqh;->f:Lnqh;

    const/4 v10, 0x6

    new-array v10, v10, [Lnqh;

    aput-object v0, v10, v3

    aput-object v1, v10, v5

    aput-object v2, v10, v7

    aput-object v4, v10, v9

    aput-object v6, v10, v11

    const/4 v0, 0x5

    aput-object v8, v10, v0

    sput-object v10, Lnqh;->g:[Lnqh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqh;->i:Ljava/lang/String;

    iput p2, p0, Lnqh;->h:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqh;->i:Ljava/lang/String;

    return-object v0
.end method
