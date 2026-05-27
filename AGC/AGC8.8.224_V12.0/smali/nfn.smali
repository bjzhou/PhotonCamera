.class public abstract Lnfn;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnfn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnfl;

    invoke-direct {v0}, Lnfl;-><init>()V

    sput-object v0, Lnfn;->a:Lnfn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/function/BiFunction;)Lj$/util/Optional;
.end method
