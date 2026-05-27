.class public final Lkzl;
.super Lkyp;


# instance fields
.field private final a:Llaa;


# direct methods
.method public constructor <init>(Llaa;)V
    .locals 0

    invoke-direct {p0}, Lkyp;-><init>()V

    iput-object p1, p0, Lkzl;->a:Llaa;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkzl;->a:Llaa;

    invoke-virtual {v0, p1}, Llaa;->l(Ljava/lang/Object;)V

    return-void
.end method
