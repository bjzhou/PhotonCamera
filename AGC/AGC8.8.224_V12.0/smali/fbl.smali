.class public final synthetic Lfbl;
.super Ljava/lang/Object;

# interfaces
.implements Ljzs;


# static fields
.field public static final synthetic a:Lfbl;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lfbl;

    invoke-direct {v0}, Lfbl;-><init>()V

    sput-object v0, Lfbl;->a:Lfbl;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lfbj;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lfbj;->c(Z)V

    :cond_0
    return-void
.end method
