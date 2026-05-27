.class public final synthetic Llza;
.super Ljava/lang/Object;

# interfaces
.implements Lomk;


# instance fields
.field public final synthetic a:Llzn;

.field public final synthetic b:Llyf;


# direct methods
.method public synthetic constructor <init>(Llzn;Llyf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llza;->a:Llzn;

    iput-object p2, p0, Llza;->b:Llyf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llza;->a:Llzn;

    iget-object v1, p0, Llza;->b:Llyf;

    check-cast p1, Loku;

    invoke-static {v0, v1, p1}, Llyz;->b(Llyz;Llyf;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
