.class public final Loht;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# static fields
.field public static final a:Loht;


# instance fields
.field private final b:Lmrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loht;

    invoke-direct {v0}, Loht;-><init>()V

    sput-object v0, Loht;->a:Loht;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lohv;

    invoke-direct {v0}, Lohv;-><init>()V

    invoke-static {v0}, Llkj;->E(Ljava/lang/Object;)Lmrl;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v0

    iput-object v0, p0, Loht;->b:Lmrl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Loht;->b()Lohu;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lohu;
    .locals 1

    iget-object v0, p0, Loht;->b:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lohu;

    return-object v0
.end method
