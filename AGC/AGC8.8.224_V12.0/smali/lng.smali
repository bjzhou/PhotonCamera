.class public final synthetic Llng;
.super Ljava/lang/Object;

# interfaces
.implements Llni;


# static fields
.field public static final synthetic a:Llng;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Llng;

    invoke-direct {v0}, Llng;-><init>()V

    sput-object v0, Llng;->a:Llng;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 1

    sget v0, Llnh;->a:I

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0
.end method
