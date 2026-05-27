.class public final Lcin;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# static fields
.field public static final a:Lcin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcin;

    invoke-direct {v0}, Lcin;-><init>()V

    sput-object v0, Lcin;->a:Lcin;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bl()Lnou;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "noop"

    return-object v0
.end method
