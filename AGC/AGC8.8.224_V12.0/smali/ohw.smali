.class public final Lohw;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# static fields
.field public static final a:Lohw;


# instance fields
.field private final b:Lmrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lohw;

    invoke-direct {v0}, Lohw;-><init>()V

    sput-object v0, Lohw;->a:Lohw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lohy;

    invoke-direct {v0}, Lohy;-><init>()V

    invoke-static {v0}, Llkj;->E(Ljava/lang/Object;)Lmrl;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v0

    iput-object v0, p0, Lohw;->b:Lmrl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lohw;->b()Lohx;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lohx;
    .locals 1

    iget-object v0, p0, Lohw;->b:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lohx;

    return-object v0
.end method
