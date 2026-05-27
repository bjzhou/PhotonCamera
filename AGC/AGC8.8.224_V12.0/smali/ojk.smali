.class public final Lojk;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lojk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lojk;

    invoke-direct {v0}, Lojk;-><init>()V

    sput-object v0, Lojk;->a:Lojk;

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

    const-string v0, "kotlin.Unit"

    return-object v0
.end method
