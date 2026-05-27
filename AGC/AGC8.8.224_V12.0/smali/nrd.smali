.class public final Lnrd;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnrd;

.field public static final b:Lnrd;

.field public static final c:Lnrd;

.field public static final d:[Lnrd;


# instance fields
.field public final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnrd;

    const-string v1, "RELIGHTING_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnrd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnrd;->a:Lnrd;

    new-instance v1, Lnrd;

    const-string v3, "RELIGHTING_PR_DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnrd;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnrd;->b:Lnrd;

    new-instance v3, Lnrd;

    const-string v5, "RELIGHTING_PR_OPT_IN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnrd;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnrd;->c:Lnrd;

    const/4 v5, 0x3

    new-array v5, v5, [Lnrd;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnrd;->d:[Lnrd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnrd;->f:Ljava/lang/String;

    iput p2, p0, Lnrd;->e:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnrd;->f:Ljava/lang/String;

    return-object v0
.end method
