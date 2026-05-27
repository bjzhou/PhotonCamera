.class public final Logu;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# static fields
.field public static final a:Logu;


# instance fields
.field private final b:Lmrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Logu;

    invoke-direct {v0}, Logu;-><init>()V

    sput-object v0, Logu;->a:Logu;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Logw;

    invoke-direct {v0}, Logw;-><init>()V

    invoke-static {v0}, Llkj;->E(Ljava/lang/Object;)Lmrl;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v0

    iput-object v0, p0, Logu;->b:Lmrl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Logu;->b()Logv;

    move-result-object v0

    return-object v0
.end method

.method public final b()Logv;
    .locals 1

    iget-object v0, p0, Logu;->b:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Logv;

    return-object v0
.end method
