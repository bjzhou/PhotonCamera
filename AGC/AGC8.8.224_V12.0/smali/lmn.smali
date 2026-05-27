.class public final synthetic Llmn;
.super Ljava/lang/Object;

# interfaces
.implements Logd;


# static fields
.field public static final synthetic a:Llmn;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Llmn;

    invoke-direct {v0}, Llmn;-><init>()V

    sput-object v0, Llmn;->a:Llmn;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Llml;->c()Llmk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llmk;->b(Z)V

    invoke-virtual {v0}, Llmk;->a()Llml;

    move-result-object v0

    return-object v0
.end method
