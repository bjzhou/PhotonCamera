.class public final Lorn;
.super Ljava/lang/Object;

# interfaces
.implements Loqh;
.implements Lope;


# static fields
.field public static final a:Lorn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorn;

    invoke-direct {v0}, Lorn;-><init>()V

    sput-object v0, Lorn;->a:Lorn;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lora;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final cN()V
    .locals 0

    return-void
.end method

.method public final d(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
