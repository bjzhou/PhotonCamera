.class public final Lcka;
.super Ljava/lang/Object;

# interfaces
.implements Lcjv;


# static fields
.field public static final a:Lcka;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcka;

    invoke-direct {v0}, Lcka;-><init>()V

    sput-object v0, Lcka;->a:Lcka;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ShutterButtonReadiness"

    return-object v0
.end method
