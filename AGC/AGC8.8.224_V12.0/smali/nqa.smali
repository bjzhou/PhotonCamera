.class public final Lnqa;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqa;

.field public static final b:Lnqa;

.field public static final c:Lnqa;

.field public static final d:Lnqa;

.field public static final e:Lnqa;

.field public static final f:Lnqa;

.field public static final g:Lnqa;

.field public static final h:[Lnqa;


# instance fields
.field public final i:I

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lnqa;

    const-string v1, "kUnknown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnqa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnqa;->a:Lnqa;

    new-instance v1, Lnqa;

    const-string v2, "kInactive"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnqa;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnqa;->b:Lnqa;

    new-instance v2, Lnqa;

    const-string v4, "kSearching"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lnqa;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnqa;->c:Lnqa;

    new-instance v4, Lnqa;

    const-string v6, "kConverged"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7}, Lnqa;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnqa;->d:Lnqa;

    new-instance v6, Lnqa;

    const-string v8, "kLocked"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9}, Lnqa;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnqa;->e:Lnqa;

    new-instance v8, Lnqa;

    const-string v10, "kFlashRequired"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11}, Lnqa;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lnqa;->f:Lnqa;

    new-instance v10, Lnqa;

    const-string v12, "kPrecapture"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13}, Lnqa;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lnqa;->g:Lnqa;

    const/4 v12, 0x7

    new-array v12, v12, [Lnqa;

    aput-object v0, v12, v3

    aput-object v1, v12, v5

    aput-object v2, v12, v7

    aput-object v4, v12, v9

    aput-object v6, v12, v11

    aput-object v8, v12, v13

    const/4 v0, 0x6

    aput-object v10, v12, v0

    sput-object v12, Lnqa;->h:[Lnqa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqa;->j:Ljava/lang/String;

    iput p2, p0, Lnqa;->i:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqa;->j:Ljava/lang/String;

    return-object v0
.end method
